function run(msg, matches)
text = io.popen("date && cal"):read('*all')
  return text
end
return {
  patterns = {
    '^[!/][Dd]ate$',
    '^[Tt]ime$',
  },
  run = run,
  moderated = true
}
