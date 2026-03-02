Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.OpenFlag

File open flags that determine how a file is opened and what operations are allowed.

These flags correspond to standard POSIX file open modes and control the file access
permissions and behavior when opening files.

- `"r"` - Read-only. File must exist.
- `"r+"` - Read/write. File must exist.
- `"w"` - Write-only. Truncates file to zero length or creates new file.
- `"wx"` - Like 'w' but fails if file exists.
- `"w+"` - Read/write. Truncates file to zero length or creates new file.
- `"wx+"` - Like 'w+' but fails if file exists.
- `"a"` - Write-only. Appends to file or creates new file.
- `"ax"` - Like 'a' but fails if file exists.
- `"a+"` - Read/write. Appends to file or creates new file.
- `"ax+"` - Like 'a+' but fails if file exists.

**Example**

```ts
import { Effect, FileSystem } from "effect"

const program = Effect.gen(function*() {
  const fs = yield* FileSystem.FileSystem

  // Open for reading only
  const readFile = yield* fs.open("data.txt", { flag: "r" })

  // Open for writing, truncating existing content
  const writeFile = yield* fs.open("output.txt", { flag: "w" })

  // Open for appending
  const appendFile = yield* fs.open("log.txt", { flag: "a" })

  // Open for read/write, but fail if file doesn't exist
  const editFile = yield* fs.open("config.json", { flag: "r+" })
})
```

**Signature**

```ts
type OpenFlag = | "r"
  | "r+"
  | "w"
  | "wx"
  | "w+"
  | "wx+"
  | "a"
  | "ax"
  | "a+"
  | "ax+"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L662)

Since v4.0.0