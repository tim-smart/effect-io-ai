Package: `effect`<br />
Module: `Exit`<br />

## Exit.fail

Constructs a new `Exit.Failure` from the specified recoverable error of type
`E`.

**Signature**

```ts
declare const fail: <E>(error: E) => Exit<never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L183)

Since v2.0.0