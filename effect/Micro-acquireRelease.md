## acquireRelease

Create a resource with a cleanup `Micro` effect, ensuring the cleanup is
executed when the `MicroScope` is closed.

**Signature**

```ts
declare const acquireRelease: <A, E, R>(acquire: Micro<A, E, R>, release: (a: A, exit: MicroExit<unknown, unknown>) => Micro<void>) => Micro<A, E, R | MicroScope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L3441)

Since v3.4.0