data PTM a
data PVar a
instance Monad PTM

newPVar    :: a -> PTM (PVar a)
readPVar   :: PVar a -> PTM a
writePVar  :: PVar a -> a -> PTM ()
atomically :: PTM a -> IO a
retry      :: PTM a
