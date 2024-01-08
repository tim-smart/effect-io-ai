# env

Specify the environment variables that will be used when running this command.

To import and use `env` from the "Command" module:

```ts
import * as Command from "@effect/platform/Command"
// Can be accessed like this
Command.env
```

**Signature**

```ts
export declare const env: {
  (environment: Record<string, string>): (self: Command) => Command
  (self: Command, environment: Record<string, string>): Command
}
```
