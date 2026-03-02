Package: `effect`<br />
Module: `Primitive`<br />

## Primitive.path

Creates a primitive that validates and resolves file system paths.

**Example**

```ts
import { Effect } from "effect"
import { Primitive } from "effect/unstable/cli"

const program = Effect.gen(function*() {
  // Parse a file path that must exist
  const filePrimitive = Primitive.path("file", true)
  const filePath = yield* filePrimitive.parse("./package.json")
  console.log(filePath) // Absolute path to package.json

  // Parse a directory path
  const dirPrimitive = Primitive.path("directory", false)
  const dirPath = yield* dirPrimitive.parse("./src")
  console.log(dirPath) // Absolute path to src directory

  // Parse any path type
  const anyPrimitive = Primitive.path("either", false)
  const anyPath = yield* anyPrimitive.parse("./some/path")
  console.log(anyPath) // Absolute path
})
```

**Signature**

```ts
declare const path: (pathType: PathType, mustExist?: boolean) => Primitive<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Primitive.ts#L352)

Since v4.0.0