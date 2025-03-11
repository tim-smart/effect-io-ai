## firstSuccessOf

This function takes an iterable of `STM` values and returns a new
`STM` value that represents the first `STM` value in the iterable
that succeeds. If all of the `Effect` values in the iterable fail, then
the resulting `STM` value will fail as well.

This function is sequential, meaning that the `STM` values in the
iterable will be executed in sequence, and the first one that succeeds
will determine the outcome of the resulting `STM` value.

Returns a new `STM` value that represents the first successful
`STM` value in the iterable, or a failed `STM` value if all of the
`STM` values in the iterable fail.

**Signature**

```ts
declare const firstSuccessOf: <A, E, R>(effects: Iterable<STM<A, E, R>>) => STM<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1983)

Since v2.0.0