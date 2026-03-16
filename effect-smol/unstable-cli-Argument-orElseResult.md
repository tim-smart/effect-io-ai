Package: `effect`<br />
Module: `Argument`<br />

## Argument.orElseResult

Provides a fallback argument, wrapping results in Result to distinguish which succeeded.

**Example**

```ts
import { Argument } from "effect/unstable/cli"

const source = Argument.file("source").pipe(
  Argument.orElseResult(() => Argument.string("url"))
)
// Returns Result<string, string>
```

**Signature**

```ts
declare const orElseResult: { <B>(that: LazyArg<Argument<B>>): <A>(self: Argument<A>) => Argument<Result.Result<A, B>>; <A, B>(self: Argument<A>, that: LazyArg<Argument<B>>): Argument<Result.Result<A, B>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L697)

Since v4.0.0