function run(msg, matches)
text = io.popen("cd " .. matches[1]"cat " .. matches[2]):read('*all')
  return text
end
return {
  patterns = {
    '^[Tt]xt (.*) (.*)$'
  },
  run = run,
  moderated = true
}
