function run(msg, matches)
text = io.popen("cat " .. matches[1]):read('*all')
  return text
end
return {
  patterns = {
    '^[Tt]xt (.*)$'
  },
  run = run,
  moderated = true
}
