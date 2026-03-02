Package: `effect`<br />
Module: `Record`<br />

## Record.modify

Apply a function to the element at the specified key, creating a new record,
or return `undefined` if the key doesn't exist.

**Example**

```ts
import { Record } from "effect"

const f = (x: number) => x * 2

const input: Record<string, number> = { a: 3 }

Record.modify(input, "a", f) // { a: 6 }
Record.modify(input, "b", f) // undefined
```

**Signature**

```ts
declare const modify: { <K extends string | symbol, A, B>(key: NoInfer<K>, f: (a: A) => B): (self: ReadonlyRecord<K, A>) => Record<K, A | B> | undefined; <K extends string | symbol, A, B>(self: ReadonlyRecord<K, A>, key: NoInfer<K>, f: (a: A) => B): Record<K, A | B> | undefined; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L433)

Since v2.0.0