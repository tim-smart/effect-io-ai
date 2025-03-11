## structuralRegion

Note: this is an experimental feature made available to allow custom matchers in tests, not to be directly used yet in user code

**Signature**

```ts
declare const structuralRegion: <A>(body: () => A, tester?: (a: unknown, b: unknown) => boolean) => A
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Utils.ts#L762)

Since v3.1.1