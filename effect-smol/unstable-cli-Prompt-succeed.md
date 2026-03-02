Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.succeed

Creates a `Prompt` which immediately succeeds with the specified value.

**NOTE**: This method will not attempt to obtain user input or render
anything to the screen.

**Signature**

```ts
declare const succeed: <A>(value: A) => Prompt<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L1023)

Since v4.0.0