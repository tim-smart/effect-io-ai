Package: `effect`<br />
Module: `Record`<br />

## Record.replace

Replaces a value in the record with the new value passed as parameter.

**Example**

```ts
import { Record } from "effect"

Record.replace({ a: 1, b: 2, c: 3 }, "a", 10) // { a: 10, b: 2, c: 3 }
Record.replace(Record.empty<string>(), "a", 10) // undefined
```

**Signature**

```ts
declare const replace: { <K extends string | symbol, B>(key: NoInfer<K>, b: B): <A>(self: ReadonlyRecord<K, A>) => Record<K, A | B> | undefined; <K extends string | symbol, A, B>(self: ReadonlyRecord<K, A>, key: NoInfer<K>, b: B): Record<K, A | B> | undefined; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L470)

Since v2.0.0