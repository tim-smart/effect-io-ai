Package: `effect`<br />
Module: `Duration`<br />

## Duration.DurationObject

An object with optional duration components that can be combined to create
a Duration. All fields are optional and additive.

Compatible with Temporal.Duration-like objects.

**Example**

```ts
import { Duration } from "effect"

Duration.fromInputUnsafe({ seconds: 30 })
Duration.fromInputUnsafe({ days: 1 })
Duration.fromInputUnsafe({ seconds: 1, nanoseconds: 500 })
```

**Signature**

```ts
export interface DurationObject {
  readonly weeks?: number | undefined
  readonly days?: number | undefined
  readonly hours?: number | undefined
  readonly minutes?: number | undefined
  readonly seconds?: number | undefined
  readonly milliseconds?: number | undefined
  readonly microseconds?: number | undefined
  readonly nanoseconds?: number | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L119)

Since v4.0.0