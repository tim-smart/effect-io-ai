Package: `effect`<br />
Module: `Path`<br />

## Path.Path.Parsed

Structured representation of a parsed file system path.

**Details**

The fields correspond to the path root, directory, base filename,
extension, and filename without extension, matching the shape consumed by
`Path.format`.

**Example** (Parsing and formatting paths)

```ts
import { Effect, Path } from "effect"

const program = Effect.gen(function*() {
  const path = yield* Path.Path

  // Parse a path into its components
  const parsed = path.parse("/home/user/documents/file.txt")
  console.log(parsed)
  // {
  //   root: "/",
  //   dir: "/home/user/documents",
  //   base: "file.txt",
  //   ext: ".txt",
  //   name: "file"
  // }

  // Format a path from its components
  const formatted = path.format({
    dir: "/home/user",
    name: "newfile",
    ext: ".ts"
  })
  console.log(formatted) // "/home/user/newfile.ts"
})
```

**Signature**

```ts
export interface Parsed {
    readonly root: string
    readonly dir: string
    readonly base: string
    readonly ext: string
    readonly name: string
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Path.ts#L183)

Since v4.0.0