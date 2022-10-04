local status_ok, comment = pcall(require, "nvim_comment")
print(status_ok)
print(comment)
if not status_ok then
  return
end

comment.setup {}
