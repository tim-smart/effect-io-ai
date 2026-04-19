Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.collectBracketPathEntries

Flattens a nested object into bracket-path entries, filtering leaf values by a type guard.

This is the inverse of `makeTreeRecord`. It takes a nested object and produces
flat `[bracketPath, value]` pairs suitable for `FormData` or `URLSearchParams`.

Use this when:
- Serializing structured objects to flat key-value entries.
- Building custom `FormData` or `URLSearchParams` encoders.

Behavior:
- Returns a curried function: first call provides the leaf type guard, second call provides the object.
- Recursively traverses objects and arrays.
- If all elements of an array are leaves, encodes them as multiple entries with the same key
  (e.g. `tags=a&tags=b`). Otherwise uses indexed bracket paths (e.g. `items[0]`, `items[1]`).
- Non-leaf values that aren't objects or arrays are silently skipped.

**Example** (Flatten object to bracket paths)

```ts
import { SchemaGetter, Predicate } from "effect"

const collectStrings = SchemaGetter.collectBracketPathEntries(Predicate.isString)
const entries = collectStrings({ user: { name: "Alice", tags: ["admin", "editor"] } })
// [["user[name]", "Alice"], ["user[tags]", "admin"], ["user[tags]", "editor"]]
```

See also:
- `makeTreeRecord` — inverse operation (flat entries to tree)
- `encodeFormData` — uses this internally
- `encodeURLSearchParams` — uses this internally

**Signature**

```ts
declare const collectBracketPathEntries: <A>(isLeaf: (value: unknown) => value is A) => (input: object) => Array<[bracketPath: string, value: A]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1843)

Since v4.0.0