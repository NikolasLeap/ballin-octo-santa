;;; Simple AI takes in a board and the color of the ai player (1 or 0) and moves a random piece

(defun simple-ai (board aicolor)
  (let* ((movelist (allmoves aiColor board))
         (randomMove (nth (random (length movelist)) moveList))
         (piece (boardItemAt board (car randomMove))))
    (updateBoard piece board randomMove)
    (updateAllPieces board)))
  