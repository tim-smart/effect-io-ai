## interruptible

Returns true only if the `Interruption` flag is **enabled** and the
`WindDown` flag is **disabled**.

A fiber is said to be interruptible if interruption is enabled and the fiber
is not in its wind-down phase, in which it takes care of cleanup activities
related to fiber shutdown.

**Signature**

```ts
declare const interruptible: (self: RuntimeFlags) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RuntimeFlags.ts#L238)

Since v2.0.0