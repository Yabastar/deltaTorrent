local function onRequest(req, res)
    local requestBody = req.readAll()

    print("Client wrote:", requestBody)

    res.setStatusCode(200)
    res.setResponseHeader("Content-Type", "text/plain")

    res.close()
end

http.listen(15005, onRequest)

print("Server is running on port 15005. Press any key to stop...")
io.read()

http.removeListener(15005)
print("Server stopped.")
