function run(msg, matches)
text = io.popen("cal"):read('*all')
  return text
end
return {
  patterns = {
    '^[/!#][Dd]ate$',
  },
  run = run,
  moderated = true
}
