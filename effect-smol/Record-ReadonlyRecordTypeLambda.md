Package: `effect`<br />
Module: `Record`<br />

## Record.ReadonlyRecordTypeLambda

Type lambda for readonly records, used in higher-kinded type operations.
This enables records to work with generic type constructors and functors.

**Example** (Applying a readonly record type lambda)

```ts
import type { HKT, Record } from "effect"

type Settings = HKT.Kind<
  Record.ReadonlyRecordTypeLambda<"port" | "retries">,
  never,
  never,
  never,
  number
>

const defaults: Settings = {
  port: 3000,
  retries: 3
}
```

**Signature**

```ts
export interface ReadonlyRecordTypeLambda<K extends string = string> extends TypeLambda {
  readonly type: ReadonlyRecord<K, this["Target"]>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L210)

Since v2.0.0