Package: `effect`<br />
Module: `Record`<br />

## Record.pop

Retrieves the value of the property with the given `key` from a record and returns an `Option`
of a tuple with the value and the record with the removed property.
If the key is not present, returns `Option.none()`.

**Example**

```ts
import { Record } from "effect"

const input: Record<string, number> = { a: 1, b: 2 }

Record.pop(input, "a") // Option.some([1, { b: 2 }])
Record.pop(input, "c") // Option.none()
```

**Signature**

```ts
declare const pop: { <K extends string | symbol, X extends K>(key: X): <A>(self: ReadonlyRecord<K, A>) => Option.Option<[A, Record<Exclude<K, X>, A>]>; <K extends string | symbol, A, X extends K>(self: ReadonlyRecord<K, A>, key: X): Option.Option<[A, Record<Exclude<K, X>, A>]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L536)

Since v2.0.0