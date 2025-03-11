## RuntimeFlags

Represents a set of `RuntimeFlag`s. `RuntimeFlag`s affect the operation of
the Effect runtime system. They are exposed to application-level code because
they affect the behavior and performance of application code.

**Signature**

```ts
type RuntimeFlags = number & {
  readonly RuntimeFlags: unique symbol
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RuntimeFlags.ts#L19)

Since v2.0.0