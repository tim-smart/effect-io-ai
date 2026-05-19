Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.All.ReturnObject

Computes the prompt returned by `Prompt.all` for a record of prompts,
preserving the record keys and replacing each prompt with its output type.

**Signature**

```ts
type ReturnObject<T> = [T] extends [{ [K: string]: Any }] ? Prompt<
      {
        -readonly [K in keyof T]: [T[K]] extends [Prompt<infer _A>] ? _A : never
      }
    >
    : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L614)

Since v4.0.0