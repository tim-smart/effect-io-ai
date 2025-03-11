## fromOption

Converts an `Option` into a `Micro` effect, that will fail with
`NoSuchElementException` if the option is `None`. Otherwise, it will succeed with the
value of the option.

**Signature**

```ts
declare const fromOption: <A>(option: Option.Option<A>) => Micro<A, NoSuchElementException>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L993)

Since v3.4.0