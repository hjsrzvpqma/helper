function run(msg, matches)
text = io.popen("date"):read('*all')
  return text
end
return {
  patterns = {
    '^[Tt]ime$',
  },
  run = run,
  moderated = true
}
