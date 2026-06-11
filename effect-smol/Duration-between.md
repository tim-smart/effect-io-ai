Package: `effect`<br />
Module: `Duration`<br />

## Duration.between

Returns `true` if a `Duration` is greater than or equal to `minimum` and
less than or equal to `maximum`, according to `Duration.Order`.

**When to use**

Use to test whether a duration is inside an inclusive range.

**Details**

Both bounds are inclusive and compared with `Duration.Order`.

**Gotchas**

The bounds are not normalized. If `minimum` is greater than `maximum`, the
predicate returns `false` for every duration.

**Example** (Checking duration ranges)

```ts
import { Duration } from "effect"

const isInRange = Duration.between(Duration.seconds(3), {
  minimum: Duration.seconds(2),
  maximum: Duration.seconds(5)
})
console.log(isInRange) // true
```

**See**

- `clamp` for constraining a duration to a range
- `isGreaterThanOrEqualTo` for checking only the lower bound
- `isLessThanOrEqualTo` for checking only the upper bound

**Signature**

```ts
declare const between: { (options: { minimum: Duration; maximum: Duration; }): (self: Duration) => boolean; (self: Duration, options: { minimum: Duration; maximum: Duration; }): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1183)

Since v2.0.0