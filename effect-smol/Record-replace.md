Package: `effect`<br />
Module: `Record`<br />

## Record.replace

Replaces a value in the record with the new value passed as parameter.

**Example**

```ts
import { Record } from "effect"

Record.replace({ a: 1, b: 2, c: 3 }, "a", 10) // Option.some({ a: 10, b: 2, c: 3 })
Record.replace(Record.empty<string>(), "a", 10) // Option.none()
```

**Signature**

```ts
declare const replace: { <K extends string | symbol, B>(key: NoInfer<K>, b: B): <A>(self: ReadonlyRecord<K, A>) => Option.Option<Record<K, A | B>>; <K extends string | symbol, A, B>(self: ReadonlyRecord<K, A>, key: NoInfer<K>, b: B): Option.Option<Record<K, A | B>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L469)

Since v2.0.0