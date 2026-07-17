Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.All.Return

Computes the return prompt type for `Prompt.all` based on the input
structure.

**Signature**

```ts
type Return<Arg> = [Arg] extends [ReadonlyArray<Any>] ? ReturnTuple<Arg>
    : [Arg] extends [Iterable<Any>] ? ReturnIterable<Arg>
    : [Arg] extends [Record<string, Any>] ? ReturnObject<Arg>
    : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Prompt.ts#L635)

Since v4.0.0