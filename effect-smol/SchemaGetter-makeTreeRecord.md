Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.makeTreeRecord

Builds a nested tree object from a list of bracket-path entries.

**When to use**

Use to parse FormData or URLSearchParams entries into structured objects.
- You have flat key-value pairs with bracket-path keys that need nesting.

**Details**

- A bracket path is a string like `"user[address][city]"` that describes nested
  object/array structure.
- Interprets bracket paths and constructs the corresponding nested object.
- Builds and returns a nested object from the input entries.
- Supported syntax:
  - `"foo"` → object key `"foo"`
  - `"foo[bar]"` → nested `{ foo: { bar: ... } }`
  - `"foo[0]"` → array index `{ foo: [value] }`
  - `"foo[]"` → append to array `foo`
  - `""` → real empty key
- Duplicate keys for the same path are merged into arrays.

**Example** (Build tree from bracket paths)

```ts
import { SchemaGetter } from "effect"

const tree = SchemaGetter.makeTreeRecord([
  ["user[name]", "Alice"],
  ["user[tags][]", "admin"],
  ["user[tags][]", "editor"]
])
// { user: { name: "Alice", tags: ["admin", "editor"] } }
```

**See**

- `collectBracketPathEntries` for the inverse operation (tree to flat entries)
- `decodeFormData` for a higher-level FormData decoder
- `decodeURLSearchParams` for a higher-level URLSearchParams decoder

**Signature**

```ts
declare const makeTreeRecord: <A>(bracketPathEntries: ReadonlyArray<readonly [bracketPath: string, value: A]>) => Schema.TreeRecord<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1803)

Since v4.0.0