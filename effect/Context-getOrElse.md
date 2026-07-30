Package: `effect`<br />
Module: `Context`<br />

## Context.getOrElse

Get a service from the context that corresponds to the given tag, or
use the fallback value.

**Signature**

```ts
declare const getOrElse: { <S, I, B>(tag: Tag<I, S>, orElse: LazyArg<B>): <Services>(self: Context<Services>) => S | B; <Services, S, I, B>(self: Context<Services>, tag: Tag<I, S>, orElse: LazyArg<B>): S | B; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Context.ts#L357)

Since v3.7.0