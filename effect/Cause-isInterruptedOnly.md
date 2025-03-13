Package: `effect`<br />
Module: `Cause`<br />

## Cause.isInterruptedOnly

Checks if a `Cause` contains only interruptions.

**Details**

This function returns `true` if the `Cause` has been interrupted but does not
contain any other failures, such as `Fail` or `Die`. It's helpful for
verifying purely "cancellation" scenarios.

**Signature**

```ts
declare const isInterruptedOnly: <E>(self: Cause<E>) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L803)

Since v2.0.0