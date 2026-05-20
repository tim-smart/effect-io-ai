Package: `effect`<br />
Module: `Effect`<br />

## Effect.All.Return

Computes the return type for `Effect.all` from its input and options.

**Signature**

```ts
type Return<Arg, O> = [Arg] extends [ReadonlyArray<EffectAny>] ? ReturnTuple<Arg, IsDiscard<O>, IsResult<O>>
    : [Arg] extends [Iterable<EffectAny>] ? ReturnIterable<Arg, IsDiscard<O>, IsResult<O>>
    : [Arg] extends [Record<string, EffectAny>] ? ReturnObject<Arg, IsDiscard<O>, IsResult<O>>
    : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L388)

Since v2.0.0