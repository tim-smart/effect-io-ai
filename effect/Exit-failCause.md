Package: `effect`<br />
Module: `Exit`<br />

## Exit.failCause

Constructs a new `Exit.Failure` from the specified `Cause` of type `E`.

**Signature**

```ts
declare const failCause: <E>(cause: Cause.Cause<E>) => Exit<never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L191)

Since v2.0.0