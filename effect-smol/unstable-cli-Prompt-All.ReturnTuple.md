Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.All.ReturnTuple

Computes the prompt returned by `Prompt.all` for a readonly tuple or array
of prompts, preserving tuple positions in the output type.

**Signature**

```ts
type Prompt<T[number] extends never ? [] : { -readonly [K in keyof T]: [T[K]] extends [Prompt<infer _A>] ? _A : never; }> = Prompt<
    T[number] extends never ? []
      : { -readonly [K in keyof T]: [T[K]] extends [Prompt<infer _A>] ? _A : never }
  > extends infer X ? X : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L609)

Since v4.0.0