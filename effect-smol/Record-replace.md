Package: `effect`<br />
Module: `Record`<br />

## Record.replace

Replaces the value at an existing key and returns the updated record in
`Option.some`.

**Details**

If the key is not present, returns `Option.none()` and leaves the record
unchanged.

**Example** (Replacing a value at a key)

```ts
import { Record } from "effect"

Record.replace({ a: 1, b: 2, c: 3 }, "a", 10) // Option.some({ a: 10, b: 2, c: 3 })
Record.replace(Record.empty<string>(), "a", 10) // Option.none()
```

**Signature**

```ts
declare const replace: { <K extends string | symbol, B>(key: NoInfer<K>, b: B): <A>(self: ReadonlyRecord<K, A>) => Option.Option<Record<K, A | B>>; <K extends string | symbol, A, B>(self: ReadonlyRecord<K, A>, key: NoInfer<K>, b: B): Option.Option<Record<K, A | B>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L572)

Since v2.0.0