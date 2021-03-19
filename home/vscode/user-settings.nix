{
  "window.zoomLevel" = 0;
  "workbench.colorTheme" = "Ayu Light";
  "editor" = {
    "tabSize" = 2;
    "rulers" = [ 80 120 ];
  };
  "[typescript]" = {
    "editor.defaultFormatter" = "esbenp.prettier-vscode";
    "editor.formatOnSave" = true;
    "editor.codeActionsOnSave" = {
      "source.fixAll.tslint" = true;
      "source.organizeImports" = true;
    };
    "updateImportsOnFileMove.enabled" = "always";
  };
  "[javascript]" = {
    "updateImportsOnFileMove.enabled" = "always";
  };
  "[markdown]" = {
    "editor.tabSize" = 4;
    "editor.formatOnSave" = true;
    "editor.defaultFormatter" = "fcrespo82.markdown-table-formatter";
  };
  "[nix]" = {
    "editor.defaultFormatter" = "jnoortheen.nix-ide";
    "editor.formatOnSave" = true;
  };
  # python language settings
  "[python]" = {
    "editor.formatOnSave" = true;
  };
  # python (the extension) settings, dis is dumb as hell
  "python" = {
    "linting" = {
      "lintOnSave" = true;
      "pylintPath" = "~/.nix-profile/bin/pylint";
    };
    "formatting" = {
      "autopep8Path" = "~/.nix-profile/bin/autopep8";
    };
  };
  # starlark language settings
  "[starlark]" = {
    "editor.tabSize" = 4;
    "editor.formatOnSave" = true;
  };
  # bazel extension settings
  "bazel" = {
    "buildifierFixOnFormat" = true;
  };
  # go language settings
  "[go]" = {
    "editor" = {
      "formatOnSave" = true;
      "codeActionsOnSave" = {
        "source" = {
          "organizeIMports" = true;
        };
      };
      "codeActionsOnSaveTimeout" = 3000;
      # Optional: Disable snippets, as they conflict with completion ranking.
      "snippetSuggestions" = "none";
    };
    formatTool = "goimports";
  };
  "[go.mod]" = {
    "editor" = {
      "formatOnSave" = true;
      "codeActionsOnSave" = {
        "source" = {
          "organizeImports" = true;
        };
      };
    };
  };
  # go extension settings
  "go" = {
    "useLanguageServer" = true;
    "lintOnSave" = true;
    "formatTool" = "goimports";
    "autocompleteUnimportedPackages" = true;
  };
  "gopls" = {
    "deepCompletion" = true;
    "completeUnimported" = true;
    "expandWorkspaceToModule" = false;
    "experimentalPackageCacheKey" = true;
    "experimentalDiagnosticsDelay" = "250ms";
    "build.directoryFilters" = [
      "-bazel-bin"
      "-bazel-edge-infra"
      "-bazel-out"
      "-bazel-testlogs"
    ];
  };

  # okteto is used for remote vscode stuf
  "okteto" = {
    "upArgs" = "--file=hack/okteto.yaml";
    "telemetry" = false; # are you kidding me lol
  };

  "files.autoSave" = true;

  "prettier.requireConfig" = true;

  "workbench.activityBar.visible" = false;
  "workbench.editor.closeOnFileDelete" = true;
  "workbench.editor.enablePreview" = false;
  "workbench.editor.highlightModifiedTabs" = true;

  "window.closeWhenEmpty" = true;
  "window.nativeTabs" = true;

  "explorer.autoReveal" = false;

  # everything is read-only, so we dont want vscode attempting to udpate 
  # anything on its own
  "extensions.autoCheckUpdates" = false;
  "extensions.autoUpdate" = false;
  "extensions.ignoreRecommendations" = true;
  "extensions.showRecommendationsOnlyOnDemand" = true;

  "update.mode" = "none";
  "update.channel" = "none";

  # bye felicia
  "telemetry.enableCrashReporter" = false;
  "telemetry.enableTelemetry" = false;
}