--Random Function from the Internet : Found by Ari

function sleep(s)
  local ntime = os.time() + s
  repeat until os.time() > ntime
end

function get_input()
    input = io.read()
    return input
end

function err_command()
    print("INVALID INPUT")
end
