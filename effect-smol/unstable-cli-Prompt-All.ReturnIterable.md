Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.All.ReturnIterable

Computes the prompt returned by `Prompt.all` for an iterable of prompts.

The resulting prompt produces an array of each prompt's output value.

**Signature**

```ts
type ReturnIterable<T> = [T] extends [Iterable<Prompt<infer A>>] ? Prompt<Array<A>>
    : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L592)

Since v4.0.0