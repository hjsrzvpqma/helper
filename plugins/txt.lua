function run(msg, matches)
text = io.popen("cd plugins && cat " .. matches[1]):read('*all')
  return text
end
return {
  patterns = {
    '^[Tt]xt (.*)$'
  },
  run = run,
  moderated = true
}
