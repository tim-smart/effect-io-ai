Package: `effect`<br />
Module: `Exit`<br />

## Exit.isInterrupted

Returns `true` if the specified exit is a `Failure` **and** the `Cause` of
the failure was due to interruption, `false` otherwise.

**Signature**

```ts
declare const isInterrupted: <A, E>(self: Exit<A, E>) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L111)

Since v2.0.0