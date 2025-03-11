## env

Specify the environment variables that will be used when running this command.

**Signature**

```ts
declare const env: { (environment: Record<string, string | undefined>): (self: Command) => Command; (self: Command, environment: Record<string, string | undefined>): Command; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Command.ts#L128)

Since v1.0.0