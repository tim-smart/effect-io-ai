Package: `effect`<br />
Module: `Record`<br />

## Record.ReadonlyRecordTypeLambda

Type lambda for readonly records, used in higher-kinded type operations.
This enables records to work with generic type constructors and functors.

**Example**

```ts
import type { Record } from "effect"

// The type lambda allows records to be used as higher-kinded types
type RecordTypeLambda = Record.ReadonlyRecordTypeLambda<"key1" | "key2">

// This enables mapping over the type parameter
type StringRecord = RecordTypeLambda["type"] // ReadonlyRecord<"key1" | "key2", Target>
```

**Signature**

```ts
export interface ReadonlyRecordTypeLambda<K extends string = string> extends TypeLambda {
  readonly type: ReadonlyRecord<K, this["Target"]>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L129)

Since v2.0.0