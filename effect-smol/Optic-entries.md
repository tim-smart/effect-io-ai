Package: `effect`<br />
Module: `Optic`<br />

## Optic.entries

An `Iso` that converts a `Record<string, A>` to an array of
`[key, value]` entries and back.

When to use:
- You want to traverse or manipulate record entries as an array (e.g.
  with `.forEach()`).

Behavior:
- `get` uses `Object.entries`.
- `set` uses `Object.fromEntries`.
- Round-trip is lossless for `Record<string, A>`.

**Example** (traversing record values)

```ts
import { Optic, Schema } from "effect"

const _positiveValues = Optic.entries<number>()
  .forEach((entry) => entry.key(1).check(Schema.isGreaterThan(0)))

const inc = _positiveValues.modifyAll((n) => n + 1)

console.log(inc({ a: 0, b: 3, c: -1 }))
// Output: { a: 0, b: 4, c: -1 }
```

**See**

- `Iso` — the type this function returns
- `id` — identity iso

**Signature**

```ts
declare const entries: <A>() => Iso<Record<string, A>, ReadonlyArray<readonly [string, A]>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Optic.ts#L1554)

Since v4.0.0