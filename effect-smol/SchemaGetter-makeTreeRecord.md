Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.makeTreeRecord

Builds a nested tree object from a list of bracket-path entries.

A bracket path is a string like `"user[address][city]"` that describes nested
object/array structure. This function interprets those paths and constructs the
corresponding nested object.

Use this when:
- Parsing FormData or URLSearchParams entries into structured objects.
- You have flat key-value pairs with bracket-path keys that need nesting.

Behavior:
- Mutates and returns a new object (does not mutate the input array).
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

See also:
- `collectBracketPathEntries` — inverse operation (tree to flat entries)
- `decodeFormData` — uses this internally
- `decodeURLSearchParams` — uses this internally

**Signature**

```ts
declare const makeTreeRecord: <A>(bracketPathEntries: ReadonlyArray<readonly [bracketPath: string, value: A]>) => Schema.TreeRecord<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1756)

Since v4.0.0