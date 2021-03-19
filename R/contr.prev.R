#' @title Additional Contrasts Matrices
#' @description Return a matrix of contrasts.
#' @param n a vector of levels for a factor, or the number of levels
#' @param contrasts a logical indicating whether contrasts should be computed
#'\code{\link[Matrix]{dgCMatrix-class}}), using package \pkg{Matrix}.
#' @details \code{contr.prev} returns contrasts which contrast each level
#' starting from the second with the previous level. Obviously this makes sense
#' rather for an ordered factor. Be aware that these contrasts are \bold{not}
#' orthogonal (and consequently are unsuitable to be used with \code{\link[stats]{aov}}).
#' @return A matrix with \code{n} rows and \code{k} columns, with \code{k=n-1}
#' if contrasts is \code{TRUE} and \code{k=n} if contrasts is \code{FALSE}.
#' @seealso \code{\link[stats]{contrast}}
#' @examples contr.prev(4)
#' @export
contr.prev = function(n, contrasts = TRUE) {
  if (length(n) <= 1L) {
    if (is.numeric(n) && length(n) == 1L && n > 1L)
      levels <- seq_len(n)
    else stop("not enough degrees of freedom to define contrasts")
  }
  else levels <- n
  levels <- as.character(levels)
  nl = length(levels)
  cont <- array(c(rep.int(c(1, numeric(nl)), nl - 1L), 1), c(nl, nl),
                list(levels, levels))
  if (contrasts) {
    cont[lower.tri(cont)] = 1L
    cont[1, ] = 0L
    cont <- cont[, -1, drop = FALSE]
  }
  cont
}
