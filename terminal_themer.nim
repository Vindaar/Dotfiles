import std/[strutils, strformat, os]
import shell

const StPath = "/home/basti/src/st/"
const Config = "config.h"
const FG = "unsigned int defaultfg ="
const BG = "unsigned int defaultbg ="

type
  ThemeKind = enum light, dark

proc patchFile(s: string, theme: ThemeKind) =
  var lines = s.readFile.splitLines
  for line in mitems(lines):
    if line.startsWith(FG):
      case theme
      of light: line = &"{FG} {260};"
      of dark:  line = &"{FG} {261};"
    elif line.startsWith(BG):
      case theme
      of light: line = &"{BG} {258};"
      of dark:  line = &"{BG} {260};"
  writeFile(s, lines.join("\n"))

proc main(theme: ThemeKind) =
  let cfg = StPath / Config
  cfg.patchFile(theme)
  let bin = &"st_{theme}"
  if not fileExists(StPath / bin):
    shell:
      one:
        cd ($StPath)
        make
        # now copy the binary
        cp st ($bin)

when isMainModule:
  import cligen
  dispatch main
