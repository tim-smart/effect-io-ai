## serviceOption

Access the given `Context.Tag` from the environment, without tracking the
dependency at the type level.

It will return an `Option` of the service, depending on whether it is
available in the environment or not.

**Signature**

```ts
declare const serviceOption: <I, S>(tag: Context.Tag<I, S>) => Micro<Option.Option<S>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L1853)

Since v3.4.0