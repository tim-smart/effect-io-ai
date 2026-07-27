Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.makeTreeRecord

Builds a nested tree object from a list of bracket-path entries.

**When to use**

Use when you need a schema getter to parse FormData or URLSearchParams
entries into structured objects.
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
- If a structural path conflicts with a previous leaf or a different container
  type, the later structural path replaces the conflicting value.
- The notation has no escaping for `.`, `[` or `]`, so keys containing these
  delimiters cannot be round-tripped without changing their structure.

**Example** (Building a tree from bracket paths)

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

- `collectBracketPathEntries` for flattening trees into bracket-path entries
- `decodeFormData` for a higher-level FormData decoder
- `decodeURLSearchParams` for a higher-level URLSearchParams decoder

**Signature**

```ts
declare const makeTreeRecord: <A>(bracketPathEntries: ReadonlyArray<readonly [bracketPath: string, value: A]>) => Schema.TreeRecord<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaGetter.ts#L1757)

Since v4.0.0