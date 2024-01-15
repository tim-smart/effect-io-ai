# fileSchema

Creates a file argument that reads, parses and validates its contents.

Can optionally provide a custom argument name (defaults to `"file"`).

To import and use `fileSchema` from the "Args" module:

```ts
import * as Args from "@effect/cli/Args"
// Can be accessed like this
Args.fileSchema
```

**Signature**

```ts
export declare const fileSchema: <I, A>(schema: Schema<I, A>, config?: Args.FormatArgsConfig | undefined) => Args<A>
```
