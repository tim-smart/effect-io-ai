Package: `effect`<br />
Module: `Argument`<br />

## Argument.optional

Makes a positional argument optional.

**Example**

```ts
import { Argument } from "effect/unstable/cli"

const optionalVersion = Argument.string("version").pipe(Argument.optional)
```

**Signature**

```ts
declare const optional: <A>(arg: Argument<A>) => Argument<Option.Option<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L274)

Since v4.0.0