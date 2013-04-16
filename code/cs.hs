server = forever $ do
  sock <- accept serverSock
  forkIO $ talk sock >> sClose sock

talk sock = do
  req <- recv sock
  send sock (f req)
