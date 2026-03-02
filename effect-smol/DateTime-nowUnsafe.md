Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.nowUnsafe

Get the current time using `Date.now`.

This is a synchronous version of `now` that directly uses `Date.now()`
instead of the Effect `Clock` service.

**Example**

```ts
import { DateTime } from "effect"

const now = DateTime.nowUnsafe()
console.log(DateTime.formatIso(now))
```

**Signature**

```ts
declare const nowUnsafe: LazyArg<Utc>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L669)

Since v3.6.0