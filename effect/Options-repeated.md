## repeated

Indicates that the specified command-line option can be repeated `0` or more
times.

**NOTE**: if the command-line option is not provided, and empty array will be
returned as the value for said option.

**Signature**

```ts
declare const repeated: <A>(self: Options<A>) => Options<Array<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cli/src/Options.ts#L467)

Since v1.0.0