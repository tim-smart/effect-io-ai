## succeed

Creates a `Prompt` which immediately succeeds with the specified value.

**NOTE**: This method will not attempt to obtain user input or render
anything to the screen.

**Signature**

```ts
declare const succeed: <A>(value: A) => Prompt<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cli/src/Prompt.ts#L679)

Since v1.0.0