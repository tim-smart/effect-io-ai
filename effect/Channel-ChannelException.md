Package: `effect`<br />
Module: `Channel`<br />

## Channel.ChannelException

Represents a generic checked exception which occurs when a `Channel` is
executed.

**Signature**

```ts
export interface ChannelException<out E> {
  readonly _tag: "ChannelException"
  readonly [ChannelExceptionTypeId]: ChannelExceptionTypeId
  readonly error: E
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L183)

Since v2.0.0