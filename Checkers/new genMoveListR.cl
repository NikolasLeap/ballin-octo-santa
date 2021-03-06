(defmethod genMoveListR ((thePiece piece) theBoard theMovelist)
  (print (slot-value thePiece 'location))
  (let ((hasJumped nil) (validlist '(nil nil nil nil)) (jumpCounter 0))
  (if (>= (length theMovelist) 2) 
      (setf hasjumped t)
    )
  (if (slot-value thePiece 'isKing) 
        (progn
          (let ((r (nth 0 (slot-value thePiece 'location))) (c (nth 1 (slot-value thePiece 'location))))
            (if (and (>= (- c 1) 0) (>= (- r 1) 0))
                (if (eq 'piece (type-of (nth (- c 1) (nth (- r 1) theBoard))))
                    (let ((item (nth (- c 1) (nth (- r 1) theBoard))))
                    (if (not (eq (slot-value item 'owner) (slot-value thePiece 'owner))) ;;If diff teams
                        ;; (where you are going - where you are) + where you are going
                        (progn
                          (let ((r (+ (- (nth 0 (slot-value item 'location)) (nth 0 (slot-value thePiece 'location))) (nth 0 (slot-value item 'location))))
                                (c (+ (- (nth 1 (slot-value item 'location)) (nth 1 (slot-value thePiece 'location))) (nth 1 (slot-value item 'location)))))
                            (if (and (>= r 0) (<= r 7) (>= c 0) (<= c 7)) ;;if inside bounds
                            (if (not (eq 'piece (type-of (nth c (nth r theBoard)))))
                                (progn 
                                  (setf (nth 0 validlist) 1) 
                              )
                              )
                            (setf (nth 0 validlist) 0)
                              )
                            
                          )
                          )
                      (setf (nth 0 validlist) 0)
                  )
                    )
                  )
              (setf (nth 0 validlist) 0)
              )
            (if (and (<= (+ c 1) 7) (>= (- r 1) 0))
                (if (eq 'piece (type-of (nth (+ c 1) (nth (- r 1) theBoard))))
                    (let ((item (nth (+ c 1) (nth (- r 1) theBoard))))
                    (if (not (eq (slot-value item 'owner) (slot-value thePiece 'owner))) ;;If diff teams
                        ;; (where you are going - where you are) + where you are going
                        (progn
                          (let ((r (+ (- (nth 0 (slot-value item 'location)) (nth 0 (slot-value thePiece 'location))) (nth 0 (slot-value item 'location))))
                                (c (+ (- (nth 1 (slot-value item 'location)) (nth 1 (slot-value thePiece 'location))) (nth 1 (slot-value item 'location)))))
                            (if (and (>= r 0) (<= r 7) (>= c 0) (<= c 7)) ;;if inside bounds
                            (if (not (eq 'piece (type-of (nth c (nth r theBoard)))))
                                (progn 
                                  (setf (nth 1 validlist) 1) 
                              )
                              )
                            (setf (nth 1 validlist) 0)
                              )
                            
                          )
                          )
                      (setf (nth 1 validlist) 0)
                  )
                    )
                  )
              (setf (nth 1 validlist) 0)
              )
            (if (and (<= (+ c 1) 7) (<= (+ r 1) 7))
                (if (eq 'piece (type-of (nth (+ c 1) (nth (+ r 1) theBoard))))
                    (let ((item (nth (+ c 1) (nth (+ r 1) theBoard))))
                    (if (not (eq (slot-value item 'owner) (slot-value thePiece 'owner))) ;;If diff teams
                        ;; (where you are going - where you are) + where you are going
                        (progn
                          (let ((r (+ (- (nth 0 (slot-value item 'location)) (nth 0 (slot-value thePiece 'location))) (nth 0 (slot-value item 'location))))
                                (c (+ (- (nth 1 (slot-value item 'location)) (nth 1 (slot-value thePiece 'location))) (nth 1 (slot-value item 'location)))))
                            (if (and (>= r 0) (<= r 7) (>= c 0) (<= c 7)) ;;if inside bounds
                            (if (not (eq 'piece (type-of (nth c (nth r theBoard)))))
                                (progn 
                                  (setf (nth 2 validlist) 1) 
                              )
                              )
                            (setf (nth 2 validlist) 0)
                              )
                            
                          )
                          )
                      (setf (nth 2 validlist) 0)
                  )
                    )
                  )
              )
            (if (and (>= (- c 1) 0) (<= (+ r 1) 7))
                (if (eq 'piece (type-of (nth (- c 1) (nth (+ r 1) theBoard))))
                    (let ((item (nth (- c 1) (nth (+ r 1) theBoard))))
                    (if (not (eq (slot-value item 'owner) (slot-value thePiece 'owner))) ;;If diff teams
                        ;; (where you are going - where you are) + where you are going
                        (progn
                          (let ((r (+ (- (nth 0 (slot-value item 'location)) (nth 0 (slot-value thePiece 'location))) (nth 0 (slot-value item 'location))))
                                (c (+ (- (nth 1 (slot-value item 'location)) (nth 1 (slot-value thePiece 'location))) (nth 1 (slot-value item 'location)))))
                            (if (and (>= r 0) (<= r 7) (>= c 0) (<= c 7)) ;;if inside bounds
                            (if (not (eq 'piece (type-of (nth c (nth r theBoard)))))
                                (progn 
                                  (setf (nth 3 validlist) 1) 
                              )
                              )
                            (setf (nth 3 validlist) 0)
                              )
                            
                          )
                          )
                      (setf (nth 3 validlist) 0)
                  )
                    )
                  )
              )
              )
          )
    (if (= (slot-value thePiece 'owner) 1) ;;else (not a king)
        (progn
          (let ((r (nth 0 (slot-value thePiece 'location))) (c (nth 1 (slot-value thePiece 'location))))
          (if (and (>= (- c 1) 0) (>= (- r 1) 0))
                  (if (eq 'piece (type-of (nth (- c 1) (nth (- r 1) theBoard))))
                    (let ((item (nth (- c 1) (nth (- r 1) theBoard))))
                    (if (not (eq (slot-value item 'owner) (slot-value thePiece 'owner))) ;;If diff teams
                        ;; (where you are going - where you are) + where you are going
                        (progn
                          (let ((r (+ (- (nth 0 (slot-value item 'location)) (nth 0 (slot-value thePiece 'location))) (nth 0 (slot-value item 'location))))
                                (c (+ (- (nth 1 (slot-value item 'location)) (nth 1 (slot-value thePiece 'location))) (nth 1 (slot-value item 'location)))))
                            (if (and (>= r 0) (<= r 7) (>= c 0) (<= c 7)) ;;if inside bounds
                            (if (not (eq 'piece (type-of (nth c (nth r theBoard)))))
                                (progn 
                                  (setf (nth 3 validlist) 1) 
                              )
                              )
                            (setf (nth 0 validlist) 0)
                              )
                            
                          )
                          )
                      (setf (nth 0 validlist) 0)
                  )
                    )
                  )
                )
              (if (and (<= (+ c 1) 7) (>= (- r 1) 0))
                  (if (eq 'piece (type-of (nth (+ c 1) (nth (- r 1) theBoard))))
                    (let ((item (nth (+ c 1) (nth (- r 1) theBoard))))
                    (if (not (eq (slot-value item 'owner) (slot-value thePiece 'owner))) ;;If diff teams
                        ;; (where you are going - where you are) + where you are going
                        (progn
                          (let ((r (+ (- (nth 0 (slot-value item 'location)) (nth 0 (slot-value thePiece 'location))) (nth 0 (slot-value item 'location))))
                                (c (+ (- (nth 1 (slot-value item 'location)) (nth 1 (slot-value thePiece 'location))) (nth 1 (slot-value item 'location)))))
                            (if (and (>= r 0) (<= r 7) (>= c 0) (<= c 7)) ;;if inside bounds
                            (if (not (eq 'piece (type-of (nth c (nth r theBoard)))))
                                (progn 
                                  (setf (nth 1 validlist) 1) 
                              )
                              )
                            (setf (nth 1 validlist) 0)
                              )
                            
                          )
                          )
                      (setf (nth 1 validlist) 0)
                  )
                    )
                  )
                )
            (setf (nth 2 validlist) 0)
            (setf (nth 3 validlist) 0)
            )
          )
      (progn ;;else it must be player 1 and player one wants to go positive on rows
        (let ((r (nth 0 (slot-value thePiece 'location))) (c (nth 1 (slot-value thePiece 'location))))
               (if (and (<= (+ c 1) 7) (<= (+ r 1) 7))
                  (if (eq 'piece (type-of (nth (+ c 1) (nth (+ r 1) theBoard))))
                    (let ((item (nth (+ c 1) (nth (+ r 1) theBoard))))
                    (if (not (eq (slot-value item 'owner) (slot-value thePiece 'owner))) ;;If diff teams
                        ;; (where you are going - where you are) + where you are going
                        (progn
                          (let ((r (+ (- (nth 0 (slot-value item 'location)) (nth 0 (slot-value thePiece 'location))) (nth 0 (slot-value item 'location))))
                                (c (+ (- (nth 1 (slot-value item 'location)) (nth 1 (slot-value thePiece 'location))) (nth 1 (slot-value item 'location)))))
                            (if (and (>= r 0) (<= r 7) (>= c 0) (<= c 7)) ;;if inside bounds
                            (if (not (eq 'piece (type-of (nth c (nth r theBoard)))))
                                (progn 
                                  (setf (nth 2 validlist) 1) 
                              )
                              )
                            (setf (nth 2 validlist) 0)
                              )
                            
                          )
                          )
                      (setf (nth 2 validlist) 0)
                  )
                    )
                  )
                )
              (if (and (>= (- c 1) 0) (<= (+ r 1) 7))
                  (if (eq 'piece (type-of (nth (- c 1) (nth (+ r 1) theBoard))))
                    (let ((item (nth (- c 1) (nth (+ r 1) theBoard))))
                    (if (not (eq (slot-value item 'owner) (slot-value thePiece 'owner))) ;;If diff teams
                        ;; (where you are going - where you are) + where you are going
                        (progn
                          (let ((r (+ (- (nth 0 (slot-value item 'location)) (nth 0 (slot-value thePiece 'location))) (nth 0 (slot-value item 'location))))
                                (c (+ (- (nth 1 (slot-value item 'location)) (nth 1 (slot-value thePiece 'location))) (nth 1 (slot-value item 'location)))))
                            (if (and (>= r 0) (<= r 7) (>= c 0) (<= c 7)) ;;if inside bounds
                            (if (not (eq 'piece (type-of (nth c (nth r theBoard)))))
                                (progn 
                                  (setf (nth 3 validlist) 1) 
                              )
                              )
                            (setf (nth 3 validlist) 0)
                              )
                            
                          )
                          )
                      (setf (nth 3 validlist) 0)
                  )
                    )
                  )
                )
          )
        (setf (nth 0 validlist) 0)
        (setf (nth 1 validlist) 0)
        )
          )
    )
    (dotimes (x (length validlist))
      (if (eq (nth x validlist) 1)
          (progn            
            (incf jumpCounter)
            (let ((orgLocation (slot-value thePiece 'location)))
              (setf theMovelist (append theMovelist (list orgLocation)))
              (updateBoard thePiece theBoard theMovelist)
              (print "calling self")
              (genMoveListR thePiece theBoard theMovelist)
              (print "returning from recursive call")
              (setf (slot-value thePiece 'location))
              
        
    (dotimes (x (length validlist))
                (let ((item (nth x validlist)))
                (if (eq 'piece (type-of item))
                    (if (not (eq (slot-value item 'owner) (slot-value thePiece 'owner))) ;;If diff teams
                        ;; (where you are going - where you are) + where you are going
                        (progn
                          (let ((r (+ (- (nth 0 (slot-value item 'location)) (nth 0 (slot-value thePiece 'location))) (nth 0 (slot-value item 'location))))
                                (c (+ (- (nth 1 (slot-value item 'location)) (nth 1 (slot-value thePiece 'location))) (nth 1 (slot-value item 'location)))))
                            (if (and (>= r 0) (<= r 7) (>= c 0) (<= c 7)) ;;if inside bounds
                            (if (not (eq 'piece (type-of (nth c (nth r theBoard)))))
                                (progn 
                                  (let ((myBoard theBoard) (myMovelist theMovelist) (orginalLocation (slot-value thePiece 'location)))
                                        (setf jumpCounter (+ jumpCounter 1))
                                        (setf myMovelist (append myMovelist (list r c))
                                        (updateBoard thePiece myBoard myMovelist)
                                    (print "found jump calling self")
                                        (genMoveListR thePiece myBoard myMovelist)
                                        (print "coming back from call to self")
                                        (setf (slot-value thePiece 'location) originalLocation)
                                  )
                              )
                              )
                            (setf (nth x validlist) 0)
                              )
                            
                          )
                          )
                      (setf (nth x validlist) 0)
                  )
                  )
                  )
      )
    (if (and (not hasJumped) (= 0 jumpCounter))
        
        (progn
          (print "adding empty locations to list")
          (print (slot-value thePiece 'location))
          (dotimes (x (length validlist))  
          (let ((tempList ()))
            (if (eq nil (nth x validlist))
                (progn
                  
                  (if (= x 0)
                      (progn
                        (print (list (- (nth 0 (slot-value thePiece 'location)) 1) (- (nth 1 (slot-value thePiece 'location)) 1)))
                        (setf templist (append templist (list (slot-value thePiece 'location) (list (- (nth 0 (slot-value thePiece 'location)) 1) (- (nth 1 (slot-value thePiece 'location)) 1)))))
                        )
                  )
              (if (= x 1)
                    (setf templist (append templist (list (slot-value thePiece 'location) (list (- (nth 0 (slot-value thePiece 'location)) 1) (+ (nth 1 (slot-value thePiece 'location)) 1)))))
                       )
              (if (= x 2)
                    (setf templist (append templist (list (slot-value thePiece 'location) (list (+ (nth 0 (slot-value thePiece 'location)) 1) (+ (nth 1 (slot-value thePiece 'location)) 1)))))
                )
              (if (= x 3)
                    (setf templist (append templist (list (slot-value thePiece 'location) (list (+ (nth 0 (slot-value thePiece 'location)) 1) (- (nth 1 (slot-value thePiece 'location)) 1)))))
                       )
                  )
              )
            (setf (slot-value thePiece 'movelist) (append (slot-value thePiece 'movelist) (list templist)))
            )
            )
          )
      (if (and (= jumpCounter 0) hasJumped)
          (progn
            (print "updating piece master move list with new jumps")
            (setf theMovelist (append theMovelist (slot-value thePiece 'location)))
            (setf (slot-value thePiece 'movelist) (append (slot-value thePiece 'movelist) theMovelist))
            )
        )
      )
    (print validlist)
    )
  )